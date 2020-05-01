.class final Lo/ZF$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZF;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ZF;


# direct methods
.method constructor <init>(Lo/ZF;)V
    .locals 0

    iput-object p1, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 254
    sget-object v0, Lo/ZF;->b:Lo/ZF$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 255
    iget-object v0, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    invoke-static {v0}, Lo/ZF;->i(Lo/ZF;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lo/ZF;->b:Lo/ZF$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    invoke-virtual {v0}, Lo/ZF;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_1

    .line 262
    sget-object v0, Lo/ZF;->b:Lo/ZF$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    invoke-static {v0}, Lo/ZF;->d(Lo/ZF;)Lo/UpdateEngine;

    move-result-object v0

    .line 267
    const-class v1, Lo/ZR;

    .line 268
    new-instance v2, Lo/ZR$StateListAnimator;

    iget-object v3, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    invoke-static {v3}, Lo/ZF;->i(Lo/ZF;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    invoke-static {v4}, Lo/ZF;->g(Lo/ZF;)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lo/ZR$StateListAnimator;-><init>(Ljava/lang/String;J)V

    check-cast v2, Lo/VintfObject;

    .line 266
    invoke-virtual {v0, v1, v2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 270
    iget-object v0, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/ZF;->d(Lo/ZF;Z)V

    .line 271
    iget-object v0, p0, Lo/ZF$ActionBar;->b:Lo/ZF;

    invoke-static {v0, v1}, Lo/ZF;->e(Lo/ZF;Z)V

    return-void
.end method
