.class public abstract Lo/ExemptionMechanism;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ExemptionMechanism$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;U::",
        "Lo/NullCipher;",
        "P::",
        "Lo/KeyGenerator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Lo/ExemptionMechanism$StateListAnimator;


# instance fields
.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/ExemptionMechanism$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ExemptionMechanism$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/ExemptionMechanism;->e:Lo/ExemptionMechanism$StateListAnimator;

    return-void
.end method


# virtual methods
.method public abstract a(Lo/BiConsumer;Lo/KeyGenerator;Lo/SealedObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TP;",
            "Lo/SealedObject<",
            "+TU;>;)V"
        }
    .end annotation
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lo/ExemptionMechanism;->d:Ljava/util/List;

    return-object v0
.end method

.method public abstract c(Landroid/view/View;)Lo/NullCipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TU;"
        }
    .end annotation
.end method

.method public d(Lo/BiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "epoxyModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/ExemptionMechanism;->c:Ljava/lang/Class;

    return-object v0
.end method
