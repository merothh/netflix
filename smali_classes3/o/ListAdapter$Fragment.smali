.class final Lo/ListAdapter$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ActivityThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ListAdapter;->e(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ActivityThread<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/ListAdapter;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/ListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lo/ListAdapter$Fragment;->d:Lo/ListAdapter;

    iput p2, p0, Lo/ListAdapter$Fragment;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/ActivityTransitionState;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lo/ListAdapter$Fragment;->c(Lo/ActivityTransitionState;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lo/ActivityTransitionState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityTransitionState<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 234
    iget p1, p0, Lo/ListAdapter$Fragment;->e:I

    return p1
.end method
