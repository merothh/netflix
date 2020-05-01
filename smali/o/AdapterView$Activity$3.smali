.class final Lo/AdapterView$Activity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AdapterView$Activity;->c(Lcom/netflix/model/leafs/VideoInfo$Sharing;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/BiFunction<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        "Lo/ActivityChooserView$Application;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/AdapterView$Activity;


# direct methods
.method constructor <init>(Lo/AdapterView$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/AdapterView$Activity$3;->b:Lo/AdapterView$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lo/AdapterView$Activity$3;->b(Ljava/io/File;Ljava/io/File;)Lo/ActivityChooserView$Application;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/io/File;Ljava/io/File;)Lo/ActivityChooserView$Application;
    .locals 9

    const-string v0, "background"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxart"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lo/AdapterView$Activity$3;->b:Lo/AdapterView$Activity;

    iget-object v0, v0, Lo/AdapterView$Activity;->c:Lo/AdapterView;

    invoke-virtual {v0}, Lo/AdapterView;->d()Lo/AbsSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 61
    iget-object p1, p0, Lo/AdapterView$Activity$3;->b:Lo/AdapterView$Activity;

    iget-object p1, p1, Lo/AdapterView$Activity;->c:Lo/AdapterView;

    invoke-virtual {p1}, Lo/AdapterView;->d()Lo/AbsSpinner;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/AbsSpinner;->e(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 63
    new-instance p1, Lo/ActivityChooserView$Application;

    .line 66
    iget-object p2, p0, Lo/AdapterView$Activity$3;->b:Lo/AdapterView$Activity;

    iget-object p2, p2, Lo/AdapterView$Activity;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iget-object v0, p0, Lo/AdapterView$Activity$3;->b:Lo/AdapterView$Activity;

    iget-object v0, v0, Lo/AdapterView$Activity;->g:Lo/AnalogClock;

    invoke-interface {p2, v0}, Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;->d(Lo/AnalogClock;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p1

    .line 63
    invoke-direct/range {v1 .. v8}, Lo/ActivityChooserView$Application;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILo/amc;)V

    return-object p1
.end method
