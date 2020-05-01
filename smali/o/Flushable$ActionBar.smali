.class public final Lo/Flushable$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/anb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Flushable;->c(Landroid/view/ViewGroup;)Lo/anb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/anb<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/Flushable$ActionBar;->d:Landroid/view/ViewGroup;

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
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lo/Flushable$ActionBar;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/Flushable;->b(Landroid/view/ViewGroup;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
