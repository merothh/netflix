.class public interface abstract Lcom/netflix/android/moneyball/fields/DataBacked;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/moneyball/fields/DataBacked$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getAttr(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getAttrWithDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
