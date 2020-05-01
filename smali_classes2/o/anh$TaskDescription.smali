.class public final Lo/anh$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/anh;->h(Lo/anb;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/anb;


# direct methods
.method public constructor <init>(Lo/anb;)V
    .locals 0

    iput-object p1, p0, Lo/anh$TaskDescription;->c:Lo/anb;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/anh$TaskDescription;->c:Lo/anb;

    invoke-interface {v0}, Lo/anb;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
