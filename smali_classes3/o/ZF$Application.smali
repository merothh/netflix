.class final Lo/ZF$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecoverySystem$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZF;->onDestroyView()V
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

    iput-object p1, p0, Lo/ZF$Application;->b:Lo/ZF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 0

    .line 346
    iget-object p1, p0, Lo/ZF$Application;->b:Lo/ZF;

    invoke-static {p1}, Lo/ZF;->a(Lo/ZF;)Lo/RecoverySystem$ActionBar;

    return-void
.end method
