.class public Lo/AssistStructure;
.super Ljava/util/Observable;
.source ""

# interfaces
.implements Lo/WaitResult$ActionBar;


# instance fields
.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/AssistStructure;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 61
    iput-object p1, p0, Lo/AssistStructure;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lo/AssistStructure;->setChanged()V

    .line 63
    new-instance v0, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->w:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/AssistStructure;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/AssistStructure;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 101
    iput-object p1, p0, Lo/AssistStructure;->b:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lo/AssistStructure;->setChanged()V

    .line 103
    new-instance v0, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->u:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/AssistStructure;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/AssistStructure;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 81
    iput-object p1, p0, Lo/AssistStructure;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lo/AssistStructure;->setChanged()V

    .line 83
    new-instance v0, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->t:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/AssistStructure;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public toStream(Lo/WaitResult;)V
    .locals 2

    .line 38
    invoke-virtual {p1}, Lo/WaitResult;->d()Lo/WallpaperManager;

    const-string v0, "id"

    .line 40
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/AssistStructure;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "email"

    .line 41
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/AssistStructure;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    const-string v0, "name"

    .line 42
    invoke-virtual {p1, v0}, Lo/WaitResult;->a(Ljava/lang/String;)Lo/WaitResult;

    move-result-object v0

    iget-object v1, p0, Lo/AssistStructure;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WaitResult;->d(Ljava/lang/String;)Lo/WallpaperManager;

    .line 44
    invoke-virtual {p1}, Lo/WaitResult;->c()Lo/WallpaperManager;

    return-void
.end method
