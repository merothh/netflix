.class final Lo/IG$Activity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/IG$Activity;->run(Lo/Am;)V
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
        "Lio/reactivex/functions/Consumer<",
        "Lo/FC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/IG$Activity;


# direct methods
.method constructor <init>(Lo/IG$Activity;)V
    .locals 0

    iput-object p1, p0, Lo/IG$Activity$2;->d:Lo/IG$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lo/FC;

    invoke-virtual {p0, p1}, Lo/IG$Activity$2;->c(Lo/FC;)V

    return-void
.end method

.method public final c(Lo/FC;)V
    .locals 13

    .line 37
    instance-of v0, p1, Lo/FC$FragmentManager;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lo/IG$Activity$2;->d:Lo/IG$Activity;

    iget-object v0, v0, Lo/IG$Activity;->d:Lo/IG;

    check-cast p1, Lo/FC$FragmentManager;

    invoke-virtual {p1}, Lo/FC$FragmentManager;->c()Lo/AU;

    move-result-object p1

    invoke-static {v0, p1}, Lo/IG;->d(Lo/IG;Lo/AU;)V

    goto :goto_0

    .line 39
    :cond_0
    instance-of v0, p1, Lo/FC$TaskDescription;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lo/IG$Activity$2;->d:Lo/IG$Activity;

    iget-object v0, v0, Lo/IG$Activity;->d:Lo/IG;

    iget-object v1, p0, Lo/IG$Activity$2;->d:Lo/IG$Activity;

    iget-object v1, v1, Lo/IG$Activity;->d:Lo/IG;

    invoke-static {v1}, Lo/IG;->d(Lo/IG;)Lo/IJ$ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    check-cast p1, Lo/FC$TaskDescription;

    invoke-virtual {p1}, Lo/FC$TaskDescription;->a()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lo/IJ$ActionBar;->a(Lo/IJ$ActionBar;ZLcom/netflix/mediaclient/android/app/Status;Lo/AU;Lo/AR;Lo/Bc;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lo/IJ$ActionBar;

    move-result-object p1

    invoke-static {v0, p1}, Lo/IG;->c(Lo/IG;Lo/IJ$ActionBar;)V

    :cond_1
    :goto_0
    return-void
.end method
