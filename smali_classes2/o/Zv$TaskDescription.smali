.class final Lo/Zv$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zv;->b(Lo/alA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Zv;

.field final synthetic e:Lo/alA;


# direct methods
.method constructor <init>(Lo/Zv;Lo/alA;)V
    .locals 0

    iput-object p1, p0, Lo/Zv$TaskDescription;->b:Lo/Zv;

    iput-object p2, p0, Lo/Zv$TaskDescription;->e:Lo/alA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lo/Zv$TaskDescription;->b:Lo/Zv;

    invoke-virtual {v0}, Lo/Zv;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lo/Zv$TaskDescription;->e:Lo/alA;

    invoke-interface {v1, v0}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
