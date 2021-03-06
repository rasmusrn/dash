part of dash;

class Simulation {
  List<Processor> processors = new List<Processor>();
  EventManager eventManager = new EventManager();
  Database database;
  num timeProgressed = 0;
  
  Simulation() {
    database = new Database(eventManager);
  }
  
  void initialize() {
    for(var processor in processors) {
      processor.eventManager = eventManager;
      processor.initialize();
    }
  }
  
  void addProcessor(Processor processor) {
    processors.add(processor);
  }
  
  void progress(double timeDelta) {
    database.update();
    timeProgressed += timeDelta;
    eventManager.emit(new Update(timeProgressed, timeDelta));
  }
  
  Entity createEntity() {
    return database.createEntity();
  }
  
  void destroyEntity(Entity entity) {
    database.destroyEntity(entity);
  }
}
