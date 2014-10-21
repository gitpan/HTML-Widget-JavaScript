package HTML::Widget::JavaScript::Constraint::All;

use warnings;
use strict;

use base 'HTML::Widget::Constraint::All';

=head1 NAME

HTML::Widget::JavaScript::Constraint::All - JavaScript All Constraint

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

JavaScript All Constraint.

=head1 METHODS

See L<HTML::Widget::Constraint::All>.

=head2 $self->emit_javascript($var_name)

Emits this constraint's JavaScript validation code.

=cut

sub emit_javascript {
	my ($self, $var_name) = @_;
	
	my @js_constraints;

	my $not = $self->not ? '' : '!';

	return "($not(" . join(' && ', map {"${var_name}.$_.value != ''"} @{$self->names}) . '))';
}

=head1 AUTHOR

Nilson Santos Figueiredo J�nior, C<< <nilsonsfj at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests directly to the author.
If you ask nicely it will probably get fixed or implemented.

=head1 COPYRIGHT & LICENSE

Copyright 2006 Nilson Santos Figueiredo J�nior, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of HTML::Widget::JavaScript::Constraint
