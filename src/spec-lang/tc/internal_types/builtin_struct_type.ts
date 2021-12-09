import { BuiltinType, TypeNode } from "solc-typed-ast";
import { Range } from "../../../util/location";

export class BuiltinStructType extends BuiltinType {
    public readonly members: Map<string, TypeNode | [TypeNode, string]>;

    constructor(name: string, members: Map<string, TypeNode | [TypeNode, string]>, src?: Range) {
        super(name, src);

        this.members = members;
    }

    pp(): string {
        return `builtin_struct ${this.name}`;
    }

    getFields(): any[] {
        return [this.name];
    }
}
