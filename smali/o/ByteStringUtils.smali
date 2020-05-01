.class public final Lo/ByteStringUtils;
.super Lo/Enum;
.source ""


# instance fields
.field private final c:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 409
    invoke-direct {p0}, Lo/Enum;-><init>()V

    .line 411
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ByteStringUtils;->e:Lo/Cloneable;

    .line 412
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    invoke-virtual {v0, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ByteStringUtils;->c:Lo/Cloneable;

    .line 413
    new-instance v0, Lo/Cloneable;

    invoke-direct {v0}, Lo/Cloneable;-><init>()V

    invoke-virtual {v0, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/ByteStringUtils;->d:Lo/Cloneable;

    return-void
.end method


# virtual methods
.method public final b()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lo/ByteStringUtils;->c:Lo/Cloneable;

    return-object v0
.end method

.method public final c()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lo/ByteStringUtils;->e:Lo/Cloneable;

    return-object v0
.end method

.method public final e()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lo/ByteStringUtils;->d:Lo/Cloneable;

    return-object v0
.end method
