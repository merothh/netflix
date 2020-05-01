.class final Lo/aeY$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeY;->b(Ljava/lang/String;III)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/DngCreator;

.field final synthetic b:Lo/XmlResourceParser;

.field final synthetic c:Lcom/facebook/imagepipeline/request/ImageRequest;

.field final synthetic d:Lo/afg;

.field final synthetic e:Lo/aeY;


# direct methods
.method constructor <init>(Lo/aeY;Lo/XmlResourceParser;Lo/DngCreator;Lcom/facebook/imagepipeline/request/ImageRequest;Lo/afg;)V
    .locals 0

    iput-object p1, p0, Lo/aeY$Application;->e:Lo/aeY;

    iput-object p2, p0, Lo/aeY$Application;->b:Lo/XmlResourceParser;

    iput-object p3, p0, Lo/aeY$Application;->a:Lo/DngCreator;

    iput-object p4, p0, Lo/aeY$Application;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    iput-object p5, p0, Lo/aeY$Application;->d:Lo/afg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lo/NfcActivityManager$ActionBar;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lo/aeY$Application;->b:Lo/XmlResourceParser;

    new-instance v1, Lo/aeY$Application$5;

    invoke-direct {v1, p0, p1}, Lo/aeY$Application$5;-><init>(Lo/aeY$Application;Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lo/BulkCursorNative;

    .line 152
    invoke-static {}, Lo/PermissionGroupInfo;->e()Lo/PermissionGroupInfo;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 127
    invoke-interface {v0, v1, p1}, Lo/XmlResourceParser;->a(Lo/BulkCursorNative;Ljava/util/concurrent/Executor;)V

    return-void
.end method
