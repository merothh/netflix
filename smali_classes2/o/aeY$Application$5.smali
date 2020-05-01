.class public final Lo/aeY$Application$5;
.super Lo/AbstractWindowedCursor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aeY$Application;->subscribe(Lio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AbstractWindowedCursor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lio/reactivex/SingleEmitter;

.field final synthetic e:Lo/aeY$Application;


# direct methods
.method constructor <init>(Lo/aeY$Application;Lio/reactivex/SingleEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter;",
            ")V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lo/aeY$Application$5;->e:Lo/aeY$Application;

    iput-object p2, p0, Lo/aeY$Application$5;->d:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Lo/AbstractWindowedCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected e(Lo/XmlResourceParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 132
    invoke-static {v1, v0, v2, v1}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 133
    invoke-interface {p1}, Lo/XmlResourceParser;->e()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object p1, p0, Lo/aeY$Application$5;->e:Lo/aeY$Application;

    iget-object p1, p1, Lo/aeY$Application;->a:Lo/DngCreator;

    iget-object v1, p0, Lo/aeY$Application$5;->e:Lo/aeY$Application;

    iget-object v1, v1, Lo/aeY$Application;->c:Lcom/facebook/imagepipeline/request/ImageRequest;

    iget-object v2, p0, Lo/aeY$Application$5;->e:Lo/aeY$Application;

    iget-object v2, v2, Lo/aeY$Application;->d:Lo/afg;

    invoke-virtual {p1, v1, v2}, Lo/DngCreator;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lo/MacAuthenticatedInputStream;

    move-result-object p1

    .line 137
    invoke-static {}, Lo/CallbackProxies;->b()Lo/CallbackProxies;

    move-result-object v1

    const-string v2, "ImagePipelineFactory.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/CallbackProxies;->j()Lo/PackageStats;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/PackageStats;->a(Lo/MacAuthenticatedInputStream;)Lo/InstantAppResolveInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 139
    iget-object p1, p0, Lo/aeY$Application$5;->d:Lio/reactivex/SingleEmitter;

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    :cond_1
    new-instance v1, Lo/NfcActivityManager$ActionBar;

    .line 142
    check-cast p1, Lo/InstrumentationInfo;

    invoke-virtual {p1}, Lo/InstrumentationInfo;->e()Ljava/io/File;

    move-result-object p1

    const-string v2, "(resource as FileBinaryResource).file"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lo/aeY$Application$5;->e:Lo/aeY$Application;

    iget-object v2, v2, Lo/aeY$Application;->e:Lo/aeY;

    iget-object v3, p0, Lo/aeY$Application$5;->e:Lo/aeY$Application;

    iget-object v3, v3, Lo/aeY$Application;->d:Lo/afg;

    invoke-static {v2, v3, v0}, Lo/aeY;->b(Lo/aeY;Lo/afg;Z)Lcom/netflix/android/imageloader/api/ImageDataSource;

    move-result-object v0

    .line 141
    invoke-direct {v1, p1, v0}, Lo/NfcActivityManager$ActionBar;-><init>(Ljava/io/File;Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 145
    iget-object p1, p0, Lo/aeY$Application$5;->d:Lio/reactivex/SingleEmitter;

    invoke-interface {p1, v1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected h(Lo/XmlResourceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/XmlResourceParser<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lo/aeY$Application$5;->d:Lio/reactivex/SingleEmitter;

    invoke-interface {p1}, Lo/XmlResourceParser;->j()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Throwable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
