
export default function Home() {
  const projects = [
    { name: "CloudSync AI", tech: "Next.js, Node.js, PostgreSQL" },
    { name: "Retail Vision", tech: "React, Express, Docker" },
    { name: "TaskPilot", tech: "TypeScript, Redis, AWS" }
  ];

  return (
    <main style={{fontFamily:'Arial',padding:'40px'}}>
      <h1>Alex Carter - Full Stack Developer</h1>
      <p>Building scalable web applications and cloud-native solutions.</p>

      <h2>Skills</h2>
      <ul>
        <li>React</li>
        <li>Next.js</li>
        <li>Node.js</li>
        <li>Docker</li>
        <li>AWS</li>
      </ul>

      <h2>Projects</h2>
      {projects.map((p, i) => (
        <div key={i}>
          <h3>{p.name}</h3>
          <p>{p.tech}</p>
        </div>
      ))}
    </main>
  );
}
