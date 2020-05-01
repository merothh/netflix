.class final Lo/FeatureFlagUtils$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FeatureFlagUtils;->a(Lcom/netflix/android/moneyball/fields/BooleanField;ILjava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/android/moneyball/fields/BooleanField;

.field final synthetic d:Lo/LogWriter;


# direct methods
.method constructor <init>(Lo/LogWriter;Lcom/netflix/android/moneyball/fields/BooleanField;)V
    .locals 0

    iput-object p1, p0, Lo/FeatureFlagUtils$StateListAnimator;->d:Lo/LogWriter;

    iput-object p2, p0, Lo/FeatureFlagUtils$StateListAnimator;->a:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lo/FeatureFlagUtils$StateListAnimator;->d:Lo/LogWriter;

    invoke-virtual {p1}, Lo/LogWriter;->e()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 38
    iget-object v0, p0, Lo/FeatureFlagUtils$StateListAnimator;->d:Lo/LogWriter;

    invoke-virtual {v0, p1}, Lo/LogWriter;->setDeviceSelected(Z)V

    .line 39
    iget-object v0, p0, Lo/FeatureFlagUtils$StateListAnimator;->a:Lcom/netflix/android/moneyball/fields/BooleanField;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    return-void
.end method
