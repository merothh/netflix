.class Lo/im$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bY$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/im$2;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/im$2;


# direct methods
.method constructor <init>(Lo/im$2;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lo/im$2$2;->e:Lo/im$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 114
    iget-object v0, p0, Lo/im$2$2;->e:Lo/im$2;

    iget v0, v0, Lo/im$2;->e:I

    return v0
.end method

.method public b()J
    .locals 2

    .line 124
    iget-object v0, p0, Lo/im$2$2;->e:Lo/im$2;

    iget-wide v0, v0, Lo/im$2;->c:J

    return-wide v0
.end method

.method public c()Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, 0x14

    return-wide v0
.end method
