.class Lo/Process$TaskDescription$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Process$TaskDescription;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Process$TaskDescription;


# direct methods
.method constructor <init>(Lo/Process$TaskDescription;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lo/Process$TaskDescription$3;->e:Lo/Process$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 561
    iget-object v0, p0, Lo/Process$TaskDescription$3;->e:Lo/Process$TaskDescription;

    iget-object v0, v0, Lo/Process$TaskDescription;->d:Lo/Process;

    iget-object v1, p0, Lo/Process$TaskDescription$3;->e:Lo/Process$TaskDescription;

    invoke-virtual {v0, v1}, Lo/Process;->c(Lo/Process$TaskDescription;)V

    return-void
.end method
