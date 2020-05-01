.class Lo/ContentProviderOperation$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContentProviderOperation$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Landroid/content/Context;)Lo/BackupAgentHelper;
    .locals 1

    .line 491
    new-instance v0, Lo/BackupAgentHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/BackupAgentHelper;-><init>(Lcom/bumptech/glide/Glide;Lo/ClipDescription;Lo/ContentProviderNative;Landroid/content/Context;)V

    return-object v0
.end method
