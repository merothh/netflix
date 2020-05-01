.class final Lo/Lv$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Lv;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/Lz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Lv;


# direct methods
.method constructor <init>(Lo/Lv;)V
    .locals 0

    iput-object p1, p0, Lo/Lv$TaskDescription;->a:Lo/Lv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lo/Lz;

    invoke-virtual {p0, p1}, Lo/Lv$TaskDescription;->b(Lo/Lz;)V

    return-void
.end method

.method public final b(Lo/Lz;)V
    .locals 1

    .line 166
    instance-of v0, p1, Lo/Lz$ActionBar;

    if-eqz v0, :cond_1

    .line 167
    check-cast p1, Lo/Lz$ActionBar;

    invoke-virtual {p1}, Lo/Lz$ActionBar;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lo/Lv$TaskDescription;->a:Lo/Lv;

    invoke-static {p1}, Lo/Lv;->d(Lo/Lv;)V

    .line 170
    :cond_0
    iget-object p1, p0, Lo/Lv$TaskDescription;->a:Lo/Lv;

    invoke-virtual {p1}, Lo/Lv;->dismiss()V

    goto :goto_0

    .line 172
    :cond_1
    sget-object v0, Lo/Lz$Application;->a:Lo/Lz$Application;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object p1, p0, Lo/Lv$TaskDescription;->a:Lo/Lv;

    invoke-static {p1}, Lo/Lv;->c(Lo/Lv;)V

    goto :goto_0

    .line 175
    :cond_2
    sget-object v0, Lo/Lz$TaskDescription;->c:Lo/Lz$TaskDescription;

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 176
    iget-object p1, p0, Lo/Lv$TaskDescription;->a:Lo/Lv;

    invoke-static {p1}, Lo/Lv;->a(Lo/Lv;)V

    :cond_3
    :goto_0
    return-void
.end method
