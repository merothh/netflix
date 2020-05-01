.class Lo/adH;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final d:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/adH;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Lo/adH;->d:Ljava/io/File;

    invoke-static {v0, p1}, Lo/adE;->b(Ljava/io/File;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
