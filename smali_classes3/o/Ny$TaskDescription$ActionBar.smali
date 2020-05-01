.class final Lo/Ny$TaskDescription$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Ny$TaskDescription;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Ny$TaskDescription;


# direct methods
.method constructor <init>(Lo/Ny$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lo/Ny$TaskDescription$ActionBar;->d:Lo/Ny$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lo/Am;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lo/Ny$TaskDescription$ActionBar;->d:Lo/Ny$TaskDescription;

    iget-object v0, v0, Lo/Ny$TaskDescription;->e:Lo/Ny;

    invoke-virtual {v0}, Lo/Ny;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/NA;

    invoke-virtual {v0, p1}, Lo/NA;->b(Lo/Am;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.multimonth.MultiMonthOfferFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
