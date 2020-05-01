.class final Lo/aaO$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaO;->c(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lo/aaO$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 125
    iget-object p2, p0, Lo/aaO$3;->a:Landroid/app/Activity;

    invoke-static {p2}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 127
    iget-object p2, p0, Lo/aaO$3;->a:Landroid/app/Activity;

    invoke-static {p2}, Lo/adU;->c(Landroid/content/Context;)V

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 129
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    iget-object p2, p0, Lo/aaO$3;->a:Landroid/app/Activity;

    const-string v0, "download diagnostics"

    invoke-virtual {p1, p2, v0}, Lo/CarrierIdentifier;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
