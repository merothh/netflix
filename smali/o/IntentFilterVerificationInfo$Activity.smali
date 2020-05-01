.class Lo/IntentFilterVerificationInfo$Activity;
.super Lo/IntentFilterVerificationInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IntentFilterVerificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private volatile c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lo/IntentFilterVerificationInfo;-><init>(Lo/IntentFilterVerificationInfo$2;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lo/IntentFilterVerificationInfo$Activity;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lo/IntentFilterVerificationInfo$Activity;->c:Z

    return-void
.end method
