.class public final Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DoubleStream;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/IllegalBlockSizeException;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;

    invoke-direct {v0}, Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;->d:Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lo/IllegalBlockSizeException;
    .locals 1

    .line 40
    new-instance v0, Lo/IllegalBlockSizeException;

    invoke-direct {v0}, Lo/IllegalBlockSizeException;-><init>()V

    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/airbnb/epoxy/ModelGroupHolder$bindView$1;->d()Lo/IllegalBlockSizeException;

    move-result-object v0

    return-object v0
.end method
