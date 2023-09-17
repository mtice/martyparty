import React from "react";

interface GreeterProps {
    name: string;
}
const Greeter: React.FC<GreeterProps> = (props: GreeterProps) => {
    const name = props.name;
    return (
        <p className="text-[2rem] mt-4 font-semibold leading-10 tracking-tighter text-zinc-900">
          Peace-of-mind from {name} prototype to {name} production
        </p>
    );
};

export default Greeter;