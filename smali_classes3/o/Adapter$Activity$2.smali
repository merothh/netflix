.class final Lo/Adapter$Activity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Adapter$Activity;->b(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Adapter$Activity;


# direct methods
.method constructor <init>(Lo/Adapter$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/Adapter$Activity$2;->a:Lo/Adapter$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lo/Adapter$Activity$2;->b(Ljava/io/File;)Lo/ActivityChooserView$Application;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/io/File;)Lo/ActivityChooserView$Application;
    .locals 9

    const-string v0, "background"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lo/Adapter$Activity$2;->a:Lo/Adapter$Activity;

    iget-object v0, v0, Lo/Adapter$Activity;->d:Lo/Adapter;

    invoke-virtual {v0}, Lo/Adapter;->d()Lo/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 62
    sget-object p1, Lo/ActivityChooserView;->a:Lo/ActivityChooserView$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 63
    new-instance p1, Lo/ActivityChooserView$Application;

    .line 65
    iget-object v0, p0, Lo/Adapter$Activity$2;->a:Lo/Adapter$Activity;

    iget-object v0, v0, Lo/Adapter$Activity;->c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v1, p0, Lo/Adapter$Activity$2;->a:Lo/Adapter$Activity;

    iget-object v1, v1, Lo/Adapter$Activity;->i:Lo/AnalogClock;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, p1

    .line 63
    invoke-direct/range {v1 .. v8}, Lo/ActivityChooserView$Application;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILo/amc;)V

    return-object p1
.end method
