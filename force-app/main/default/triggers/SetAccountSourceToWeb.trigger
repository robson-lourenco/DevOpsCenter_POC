trigger SetAccountSourceToWeb on Account (before insert) {
    for (Account acc : Trigger.new) {
        acc.AccountSource = 'Web';
    }
}