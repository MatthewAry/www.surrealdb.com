import Model from '@ascua/surreal/model';
import { boolean } from '@ascua/surreal/field';
import { string } from '@ascua/surreal/field';

export default class Job extends Model {

	// ------------------------------
	// Persistent properties
	// ------------------------------

	@string location;

	@string title;

	@string type;

	@string url;

	@boolean visible;

}
