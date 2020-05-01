.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$5;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 232
    return-void
.end method
