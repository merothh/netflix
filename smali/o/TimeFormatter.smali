.class public abstract Lo/TimeFormatter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lo/AlteredCharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AlteredCharSequence<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/AlteredCharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AlteredCharSequence<",
            "TT;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/TimeFormatter;->a:Lo/AlteredCharSequence;

    return-void
.end method


# virtual methods
.method public abstract d()I
.end method
