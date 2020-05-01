.class Lo/Process$TaskDescription$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Process$TaskDescription;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Process$TaskDescription;


# direct methods
.method constructor <init>(Lo/Process$TaskDescription;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lo/Process$TaskDescription$2;->a:Lo/Process$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 482
    iget-object v0, p0, Lo/Process$TaskDescription$2;->a:Lo/Process$TaskDescription;

    invoke-virtual {v0}, Lo/Process$TaskDescription;->c()V

    return-void
.end method
