.class final Lo/ExemptionMechanismException$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ExemptionMechanismException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lo/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method public constructor <init>(Lo/BiConsumer;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundObject"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ExemptionMechanismException$TaskDescription;->b:Lo/BiConsumer;

    iput p2, p0, Lo/ExemptionMechanismException$TaskDescription;->c:I

    iput-object p3, p0, Lo/ExemptionMechanismException$TaskDescription;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lo/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/BiConsumer<",
            "*>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/ExemptionMechanismException$TaskDescription;->b:Lo/BiConsumer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 95
    iget v0, p0, Lo/ExemptionMechanismException$TaskDescription;->c:I

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/ExemptionMechanismException$TaskDescription;->a:Ljava/lang/Object;

    return-object v0
.end method
