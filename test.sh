#!/usr/bin/expect
spawn sudo firmwarepasswd -setpasswd
expect {
     "Enter new password:" {
          send "Kfcnjxr@\r"
          exp_continue
     }
     "Re-enter new password:" {
          send "Kfcnjxr@\r"
          exp_continue
     }
}
