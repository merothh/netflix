.class final Lo/akW$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/akW;->a([Lo/alA;)Ljava/util/Comparator;
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
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic d:[Lo/alA;


# direct methods
.method constructor <init>([Lo/alA;)V
    .locals 0

    iput-object p1, p0, Lo/akW$TaskDescription;->d:[Lo/alA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/akW$TaskDescription;->d:[Lo/alA;

    invoke-static {p1, p2, v0}, Lo/akW;->b(Ljava/lang/Object;Ljava/lang/Object;[Lo/alA;)I

    move-result p1

    return p1
.end method
