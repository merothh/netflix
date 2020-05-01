.class Lo/adD;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/adD;->c:Ljava/io/File;

    iput-object p2, p0, Lo/adD;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2

    iget-object v0, p0, Lo/adD;->c:Ljava/io/File;

    iget-object v1, p0, Lo/adD;->b:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lo/adE;->a(Ljava/io/File;Ljava/io/File;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
