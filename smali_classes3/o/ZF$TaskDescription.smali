.class final Lo/ZF$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecoverySystem$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZF;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ZF;


# direct methods
.method constructor <init>(Lo/ZF;)V
    .locals 0

    iput-object p1, p0, Lo/ZF$TaskDescription;->a:Lo/ZF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lo/ZF$TaskDescription;->a:Lo/ZF;

    invoke-static {p1}, Lo/ZF;->c(Lo/ZF;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lo/ZF$TaskDescription;->a:Lo/ZF;

    invoke-static {p1}, Lo/ZF;->e(Lo/ZF;)V

    :goto_0
    return-void
.end method
