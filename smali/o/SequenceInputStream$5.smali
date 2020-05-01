.class Lo/SequenceInputStream$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SequenceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/SequenceInputStream;


# direct methods
.method constructor <init>(Lo/SequenceInputStream;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lo/SequenceInputStream$5;->a:Lo/SequenceInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 343
    iget-object v0, p0, Lo/SequenceInputStream$5;->a:Lo/SequenceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SequenceInputStream;->e(I)V

    return-void
.end method
