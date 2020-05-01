.class Lo/afu$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/yf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afu;->a(Ljava/lang/String;ILio/reactivex/SingleEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/SingleEmitter;

.field final synthetic c:Lo/afu;


# direct methods
.method constructor <init>(Lo/afu;Lio/reactivex/SingleEmitter;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lo/afu$4;->c:Lo/afu;

    iput-object p2, p0, Lo/afu$4;->a:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 220
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 221
    iget-object p2, p0, Lo/afu$4;->a:Lio/reactivex/SingleEmitter;

    new-instance p3, Lo/NfcActivityManager$ActionBar;

    sget-object v0, Lcom/netflix/android/imageloader/api/ImageDataSource;->b:Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-direct {p3, p1, v0}, Lo/NfcActivityManager$ActionBar;-><init>(Ljava/io/File;Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    invoke-interface {p2, p3}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
