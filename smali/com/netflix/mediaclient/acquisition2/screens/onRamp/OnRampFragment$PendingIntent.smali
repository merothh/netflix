.class final Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PendingIntent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 262
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PendingIntent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->f(Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;)V

    .line 263
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PendingIntent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->m()Lo/StatsLog;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment$PendingIntent;->d:Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/onRamp/OnRampFragment;->G()Lo/TextClassificationSessionFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/StatsLog;->c(Lo/TextClassificationSessionFactory;)V

    return-void
.end method
