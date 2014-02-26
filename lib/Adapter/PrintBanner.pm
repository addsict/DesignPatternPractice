package Adapter::PrintBanner;

use Adapter::Banner;

sub new {
    my ($class, $message) = @_;
    bless {
        banner => Adapter::Banner->new($message),
    }, $class;
}

sub printWeak {
    my ($self, $fh) = @_;
    if (defined $fh) {
        print $fh $self->{banner}->get_message_with_paren;
    } else {
        print $self->{banner}->get_message_with_paren;
    }
}

sub printStrong {
    my ($self, $fh) = @_;
    if (defined $fh) {
        print $fh $self->{banner}->get_message_with_aster;
    } else {
        print $self->{banner}->get_message_with_aster;
    }
}

1;
