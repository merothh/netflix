.class final Lo/ArrayAdapter$TaskDescription$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ArrayAdapter$TaskDescription;->a(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;
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
.field final synthetic d:Lo/ArrayAdapter$TaskDescription;


# direct methods
.method constructor <init>(Lo/ArrayAdapter$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/ArrayAdapter$TaskDescription$5;->d:Lo/ArrayAdapter$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lo/ArrayAdapter$TaskDescription$5;->b(Ljava/io/File;)Lo/AdapterViewFlipper$StateListAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/io/File;)Lo/AdapterViewFlipper$StateListAnimator;
    .locals 8

    const-string v0, "background"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lo/ArrayAdapter$TaskDescription$5;->d:Lo/ArrayAdapter$TaskDescription;

    iget-object v0, v0, Lo/ArrayAdapter$TaskDescription;->d:Lo/ArrayAdapter;

    invoke-virtual {v0}, Lo/ArrayAdapter;->d()Lo/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 64
    sget-object p1, Lo/AdapterViewFlipper;->b:Lo/AdapterViewFlipper$TaskDescription;

    check-cast p1, Lo/MessagePdu;

    .line 65
    new-instance p1, Lo/AdapterViewFlipper$StateListAnimator;

    .line 67
    iget-object v0, p0, Lo/ArrayAdapter$TaskDescription$5;->d:Lo/ArrayAdapter$TaskDescription;

    iget-object v0, v0, Lo/ArrayAdapter$TaskDescription;->d:Lo/ArrayAdapter;

    iget-object v1, p0, Lo/ArrayAdapter$TaskDescription$5;->d:Lo/ArrayAdapter$TaskDescription;

    iget-object v1, v1, Lo/ArrayAdapter$TaskDescription;->a:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v3, p0, Lo/ArrayAdapter$TaskDescription$5;->d:Lo/ArrayAdapter$TaskDescription;

    iget-object v3, v3, Lo/ArrayAdapter$TaskDescription;->g:Lo/AnalogClock;

    invoke-interface {v1, v3}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ArrayAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p1

    .line 65
    invoke-direct/range {v1 .. v7}, Lo/AdapterViewFlipper$StateListAnimator;-><init>(Landroid/net/Uri;Landroid/net/Uri;Lo/AdapterViewFlipper$Activity;Ljava/lang/String;ILo/amc;)V

    return-object p1
.end method
