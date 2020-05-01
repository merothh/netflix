.class public final Lo/SealedObject;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lo/NullCipher;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final e:Lo/NullCipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILo/NullCipher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIITU;)V"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/SealedObject;->c:I

    iput p2, p0, Lo/SealedObject;->b:I

    iput p3, p0, Lo/SealedObject;->a:I

    iput-object p4, p0, Lo/SealedObject;->e:Lo/NullCipher;

    return-void
.end method
