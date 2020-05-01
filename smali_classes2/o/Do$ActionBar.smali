.class final Lo/Do$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;Lo/UpdateEngine;Lio/reactivex/Observable;Ljava/lang/String;J)V
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
        "Lo/FP;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Do;


# direct methods
.method constructor <init>(Lo/Do;)V
    .locals 0

    iput-object p1, p0, Lo/Do$ActionBar;->c:Lo/Do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/FP;)V
    .locals 0

    .line 120
    instance-of p1, p1, Lo/FP$TaskDescription;

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lo/Do$ActionBar;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->k(Lo/Do;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lo/Do$ActionBar;->c:Lo/Do;

    invoke-static {p1}, Lo/Do;->s(Lo/Do;)V

    :cond_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/FP;

    invoke-virtual {p0, p1}, Lo/Do$ActionBar;->a(Lo/FP;)V

    return-void
.end method
