.class public final Lo/aks$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/anb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aks;->f([Ljava/lang/Object;)Lo/anb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/anb<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo/aks$Application;->e:[Ljava/lang/Object;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lo/aks$Application;->e:[Ljava/lang/Object;

    invoke-static {v0}, Lo/alU;->b([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
