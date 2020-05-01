.class public final Lo/BatteryStats$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BatteryStats;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/view/View;",
        ">;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/BatteryStats$ActionBar;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lo/BatteryStats$ActionBar$Application;
    .locals 1

    .line 18
    new-instance v0, Lo/BatteryStats$ActionBar$Application;

    invoke-direct {v0, p0}, Lo/BatteryStats$ActionBar$Application;-><init>(Lo/BatteryStats$ActionBar;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/BatteryStats$ActionBar;->d()Lo/BatteryStats$ActionBar$Application;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
