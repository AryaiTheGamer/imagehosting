import Image from 'next/image';

export default function Home() {
  return (
    <main className="bg-[#FFFEF9] text-[#2C2C2C] min-h-screen font-sans">
      {/* Navigation */}
      <nav className="fixed top-0 w-full bg-white/80 backdrop-blur-md z-50 border-b border-[#D4B896]/20">
        <div className="max-w-7xl mx-auto px-8 py-6 flex justify-between items-center">
          <h1 className="text-2xl tracking-tight font-light">Tyler Aryai</h1>
          <div className="flex gap-8 text-sm tracking-widest">
            <a href="#artistry" className="hover:text-[#D4B896] transition">ARTISTRY</a>
            <a href="#about" className="hover:text-[#D4B896] transition">ABOUT</a>
            <a href="#offerings" className="hover:text-[#D4B896] transition">OFFERINGS</a>
            <a href="#contact" className="hover:text-[#D4B896] transition">BOOK ME</a>
          </div>
        </div>
      </nav>

      {/* Hero Section */}
      <section className="relative h-screen flex items-center justify-center pt-20">
        <div className="absolute inset-0">
          <Image 
            src="https://picsum.photos/id/1015/2000/1200" 
            alt="Luxury Wellness" 
            fill 
            className="object-cover"
            priority 
          />
          <div className="absolute inset-0 bg-black/40"></div>
        </div>
        
        <div className="relative text-center px-6 z-10">
          <p className="text-[#D4B896] tracking-[4px] text-sm mb-4">LUXURY WELLNESS CREATOR</p>
          <h1 className="text-7xl md:text-8xl font-light text-white tracking-tighter mb-6">
            TYLER ARYAI
          </h1>
          <p className="text-xl text-white/90 max-w-md mx-auto">
            Photography • Video • Movement Meditation
          </p>
        </div>
      </section>

      {/* Artistry Teaser */}
      <section id="artistry" className="max-w-7xl mx-auto px-8 py-24">
        <h2 className="text-5xl font-light text-center mb-16">Artistry</h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          {/* Replace these image links with yours later */}
          <div className="relative group overflow-hidden">
            <Image src="https://picsum.photos/id/1016/800/1000" alt="Project 1" width={800} height={1000} className="w-full h-full object-cover" />
            <div className="absolute bottom-8 left-8 text-white">
              <p className="text-2xl font-light">Desert Sound Bath • Joshua Tree</p>
            </div>
          </div>

          <div className="relative group overflow-hidden">
            <Image src="https://picsum.photos/id/102/800/1000" alt="Project 2" width={800} height={1000} className="w-full h-full object-cover" />
            <div className="absolute bottom-8 left-8 text-white">
              <p className="text-2xl font-light">Luxury Retreat • Malibu</p>
            </div>
          </div>
        </div>
      </section>

      <div className="text-center py-12 border-t border-[#D4B896]/20">
        <p className="text-sm text-[#D4B896]">More coming soon • Instagram @yourhandle</p>
      </div>
    </main>
  );
}
