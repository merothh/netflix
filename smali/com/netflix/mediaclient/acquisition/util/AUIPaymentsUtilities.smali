.class public final Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$CCNumberHelper;,
        Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities$ThreatMetrix;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIPaymentsUtilities;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
