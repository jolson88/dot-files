import re, subprocess, os

def get_password_emacs(machine):
        s = "machine %s login \"[^ ]*\" password \"([^ ]*)\"\n" % (machine)
        p = re.compile(s)
        authinfo = os.popen("gpg -q -d --no-mdc-warning --no-tty --passphrase `security find-generic-password -a authinfo -s offlineimap -w` ~/.authinfo.gpg").read()
        return p.search(authinfo).group(1)

def get_keychain_pass(account=None, server=None):
    params = {
        'security': '/usr/bin/security',
        'command': 'find-generic-password',
        'account': account,
        'server': server,
    }
    command = "sudo -u `whoami` %(security)s %(command)s -a %(account)s -s %(server)s -g" % params
    output = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
    outtext = [l for l in output.splitlines()
               if l.startswith('password: ')][0]

    return re.match(r'password: "(.*)"', outtext).group(1)
