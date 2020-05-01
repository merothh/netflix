.class final Lo/TextLinksParams$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextLinksParams;->b(Lo/alA;Lo/alB;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lo/TextLinksParams$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/TextLinksParams$TaskDescription;

    invoke-direct {v0}, Lo/TextLinksParams$TaskDescription;-><init>()V

    sput-object v0, Lo/TextLinksParams$TaskDescription;->d:Lo/TextLinksParams$TaskDescription;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Void;)V
    .locals 1

    const-string p1, "SMSRetrieverManager"

    const-string v0, "addOnSuccessListener"

    .line 39
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/TextLinksParams$TaskDescription;->e(Ljava/lang/Void;)V

    return-void
.end method
