.class public Lcom/netflix/mediaclient/android/activity/KitchensinkActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "KitchensinkActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/activity/KitchensinkActivity;->setContentView(I)V

    return-void
.end method
