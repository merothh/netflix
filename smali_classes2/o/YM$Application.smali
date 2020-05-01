.class final Lo/YM$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YM;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/YM;


# direct methods
.method constructor <init>(Lo/YM;)V
    .locals 0

    iput-object p1, p0, Lo/YM$Application;->a:Lo/YM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/YM$Application;->a:Lo/YM;

    invoke-virtual {v0}, Lo/YM;->finish()V

    return-void
.end method
