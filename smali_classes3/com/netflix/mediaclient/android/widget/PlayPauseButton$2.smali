.class public final Lcom/netflix/mediaclient/android/widget/PlayPauseButton$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaControlView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Ljava/lang/Throwable;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/MediaControlView2;


# direct methods
.method public constructor <init>(Lo/MediaControlView2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$2;->e:Lo/MediaControlView2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$2;->e:Lo/MediaControlView2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/MediaControlView2;->c(Lo/MediaControlView2;Z)V

    .line 85
    sget-object p1, Lo/MediaControlView2;->b:Lo/MediaControlView2$Application;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/widget/PlayPauseButton$2;->d(Ljava/lang/Throwable;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
