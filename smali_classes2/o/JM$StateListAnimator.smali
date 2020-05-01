.class public final Lo/JM$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private d:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/JM$StateListAnimator;->b:Ljava/lang/String;

    iput-object p2, p0, Lo/JM$StateListAnimator;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/JM$StateListAnimator;->d:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/JM$StateListAnimator;->b:Ljava/lang/String;

    return-object v0
.end method
