.class final Lo/Qz$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Qz;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Qz;


# direct methods
.method constructor <init>(Lo/Qz;)V
    .locals 0

    iput-object p1, p0, Lo/Qz$Activity;->b:Lo/Qz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 302
    iget-object v0, p0, Lo/Qz$Activity;->b:Lo/Qz;

    invoke-virtual {v0}, Lo/Qz;->c()Lo/nS;

    move-result-object v0

    iget-object v1, p0, Lo/Qz$Activity;->b:Lo/Qz;

    check-cast v1, Lo/nV;

    invoke-interface {v0, v1}, Lo/nS;->e(Lo/nV;)V

    return-void
.end method
