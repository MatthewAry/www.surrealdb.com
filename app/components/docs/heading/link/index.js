import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { action } from '@ember/object';

export default class extends Component {
	@tracked id;
	@tracked isTooltipVisible = false;

	@action
	copyLink(event) {
		event.preventDefault();
		console.log(event);
		navigator.clipboard.writeText(event.target.parentElement.href);
		this.isTooltipVisible = true;
		setTimeout(() => {
			this.isTooltipVisible = false;
		}, 2000);
	}
}