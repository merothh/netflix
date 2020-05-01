.class public final Lo/BatteryStats$ActionBar$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lo/ami;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BatteryStats$ActionBar;->d()Lo/BatteryStats$ActionBar$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;",
        "Lo/ami;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/BatteryStats$ActionBar;

.field private e:I


# direct methods
.method constructor <init>(Lo/BatteryStats$ActionBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lo/BatteryStats$ActionBar$Application;->c:Lo/BatteryStats$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 3

    .line 21
    iget-object v0, p0, Lo/BatteryStats$ActionBar$Application;->c:Lo/BatteryStats$ActionBar;

    iget-object v0, v0, Lo/BatteryStats$ActionBar;->a:Landroid/view/ViewGroup;

    iget v1, p0, Lo/BatteryStats$ActionBar$Application;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/BatteryStats$ActionBar$Application;->e:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 20
    iget v0, p0, Lo/BatteryStats$ActionBar$Application;->e:I

    iget-object v1, p0, Lo/BatteryStats$ActionBar$Application;->c:Lo/BatteryStats$ActionBar;

    iget-object v1, v1, Lo/BatteryStats$ActionBar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lo/BatteryStats$ActionBar$Application;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
